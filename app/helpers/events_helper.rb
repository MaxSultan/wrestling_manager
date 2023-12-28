module EventsHelper
    def current_team_for_select
        team  = current_user.team
        [[team.entity_name, team.id]]
    end 
end
