# -*- coding: utf-8 -*-

require 'gemoji'

Plugin.create(:emoji) do

  # 投稿する際に:emoji:があれば絵文字に置き換える
  filter_gui_postbox_post do |gui_postbox|
    text = Plugin.create(:gtk).widgetof(gui_postbox).widget_post.buffer.text
    if text =~ /:([\w+-]+):/
      e = text.scan(/:([\w+-]+):/)
      e.flatten!
      e.each do |emo|
        emoji = Emoji.find_by_alias(emo)
        if emoji # マッチしたエイリアスの絵文字があったら
          text = text.to_s.gsub(/:#{emo}:/, emoji.raw)
        end
      end
    end
    Service.primary.post :message => text
    Plugin.call(:before_postbox_text, text)
    Plugin.create(:gtk).widgetof(gui_postbox).widget_post.buffer.text=''
    Plugin.filter_cancel!
  end

end
