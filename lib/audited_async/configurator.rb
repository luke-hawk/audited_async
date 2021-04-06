module AuditedAsync
  class Configurator
    attr_accessor :enabled, :job_name, :job_options, :destroy_enabled

    def initialize
      @enabled     = true
      @job_name    = 'AuditedAsync::AuditAsyncJob'
      @job_options = { wait: 1.second }
      @destroy_enabled = false
    end

    def job_options
      @job_options || {}
    end

    alias enabled? enabled

    alias destroy_enabled? destroy_enabled

    def job
      @job_name.constantize
    end
  end
end
