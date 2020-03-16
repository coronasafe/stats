ActiveAdmin.register Report do
  permit_params :under_observation, :under_home_isolation, :hospitalised_today, :total_hospitalised, :corona_positive, :cured_discharged, :deaths, :district_id

  index do
    selectable_column
    id_column
    column :under_observation
    column :under_home_isolation
    column :hospitalised_today
    column :total_hospitalised
    column :corona_positive
    column :cured_discharged
    column :deaths
    column :district_name
    actions
  end

  filter :district

  form do |f|
    f.inputs do
      f.input :under_observation
      f.input :under_home_isolation
      f.input :hospitalised_today
      f.input :total_hospitalised
      f.input :corona_positive
      f.input :cured_discharged
      f.input :deaths
      f.input :district, as: :select
    end
    f.actions
  end

end