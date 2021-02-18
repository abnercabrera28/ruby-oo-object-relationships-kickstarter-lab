class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select do |proj|
            proj.backer == self
        end
        projects.map do |pro|
            pro.project
        end
    end

end