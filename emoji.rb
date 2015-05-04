# -*- coding: utf-8 -*-

require 'gemoji'

Plugin.create(:emoji) do
  on_update do |service, messages|
    messages.each do |msg|
      if msg.to_s =~ /:([\w+-]+):/ # :hoge: の文字列があったら
        emoji = Emoji.find_by_alias($1).raw
        if emoji # 絵文字があったら
          p emoji
          newmsg = msg.to_s.gsub(/:([\w+-]+):/, emoji) # :hoge: を絵文字に変換する
          p newmsg
          newmsg
        else
          msg.to_s
        end
      else
        msg.to_s
      end
    end
  end
end
