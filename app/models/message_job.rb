class MessageJob
  @queue = :default

  def self.perform(message_id)
    message = Message.find(message_id)
    message.update_attribute(:text, "#{message.text} (job done)")
  end
end