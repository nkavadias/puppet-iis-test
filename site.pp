node 'node1.example.com'{
# not working with role assinment??
# include roles::mywebsite_server

include profiles::mywebsite
}

class roles::mywebsite_server{
 include profiles::mywebsite
}

class profiles::mywebsite{
     include mywebsite_iis_cfg
     include iis
}

## configure IIS for mywebsite
class mywebsite_iis_cfg {
          iis::manage_site {'My Website':
          site_path     => 'C:\inetpub\wwwroot\MyWebsite',
          port          => '80',
          ip_address    => '*',
          app_pool      =>'AppPool1'
        }
          iis::manage_app_pool { 'AppPool1':
          enable_32_bit           => true,
          apppool_identitytype    => 'NetworkService'
        }
}

##install IIS
class iis {
          windowsfeature { 'Web-Webserver':
          installsubfeatures => true
        }
}


