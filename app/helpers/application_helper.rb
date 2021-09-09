# frozen_string_literal: true

module ApplicationHelper
  def title_tag(title, env_prefix: true)
    return tag.title(title) unless env_prefix

    prefix =
      case Rails.env
      when 'development' then 'DEV'
      else ''
      end
    return tag.title(title) if prefix.blank?

    tag.title("#{prefix} | #{title}")
  end
end
