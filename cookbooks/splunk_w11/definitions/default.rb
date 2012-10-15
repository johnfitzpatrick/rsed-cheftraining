define :set_user do
  user params[:name] do
  action :create
  system true
  shell "/bin/bash"
  end 
end 

