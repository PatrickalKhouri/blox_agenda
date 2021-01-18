class Meeting < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :start_time, :duration_minutes, :title, presence: true
  validates :duration_minutes, :numericality => { greater_than_or_equal_to: 15}
  validates :date, presence: true,
             format: { with: /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/,
             message: "Por favor colocar a data no formato correto/Insira uma data válida",
             multiline: true}
  #validate :comercial_hours, :on => :create
  validates :comercial_hours, inclusion: { in: [true],
            message: "Reunião fora do horário comercial" }

private 

def comercial_hours
  duration_seconds = self.duration_minutes * 60
  end_time = self.start_time + duration_seconds
  unless self.start_time.hour < 8 || end_time.hour >= 18
    true
  else
    false
  end
 end

end
