Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "jobs_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:job_openings, :icon => 'icon-bullhorn') %>")
