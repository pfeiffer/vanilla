class Message < ActiveRecord::Base
  after_commit :enqueue_job, on: :create

  private

  def enqueue_job
    Resque.enqueue_in(10.seconds, MessageJob, id)
  end
end
