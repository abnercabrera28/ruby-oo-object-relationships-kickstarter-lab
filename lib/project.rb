class Project


    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        back = ProjectBacker.all.select do |b|
            b.project == self
        end
        back.map do |ba|
            ba.backer
        end
    end
end