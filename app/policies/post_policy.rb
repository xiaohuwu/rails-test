class PostPolicy <ApplicationPolicy
  def update?
    @logger = Rails.logger
    @logger.info "[test]"
      false
  end
end