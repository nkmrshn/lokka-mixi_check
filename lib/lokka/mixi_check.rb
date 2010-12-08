module Lokka
  module MixiCheck
    def self.registered(app)
      app.get '/admin/plugins/mixi_check' do
        haml :"plugin/lokka-mixi_check/views/index", :layout => :"admin/layout"
      end 

      app.put '/admin/plugins/mixi_check' do
        params.each_pair do |key, value|
          eval("Option.#{key}='#{value}'")
        end 
        flash[:notice] = t.mixi_check_updated
        redirect '/admin/plugins/mixi_check'
      end 
    end
  end

  module Helpers
    def mixi_check(url = nil)
      key = Option.mixi_check_key
      return if key.blank?

      button = Option.mixi_check_button
      button_type = Option.mixi_check_button_type
      button += '.' + button_type if !button.blank? && !button_type.blank? 

      opts = {'data-key' => key}
      opts['data-url'] = url unless url.blank?
      opts['data-button'] = button unless button.blank?

      data = []
      opts.each {|opt| data << opt.join('="') + '"'}

      code = %Q(<a href="http://mixi.jp/share.pl" class="mixi-check-button")
      code += ' ' + data.join(' ')
      code += %Q(>Check</a><script type="text/javascript" src="http://static.mixi.jp/js/share.js"></script>)
    end
  end
end
