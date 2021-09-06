module ActiveRecord::TestFixtures
  def run_in_transaction?
    use_transactional_tests && !self.class.uses_transaction?(method_name)
  end
end