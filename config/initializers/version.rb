module Maybe
  class << self
    def version
      Semver.new(semver)
    end

    def commit_sha
      `git rev-parse HEAD`.chomp
    end

    private
      def semver
        "0.2.0-alpha.2"
      end
  end
end
