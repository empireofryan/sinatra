require 'sinatra'
get '/' do
  erb :home
end
get '/about' do
  erb :about
end
get '/contact' do
  erb :contact, :layout => :special
end
__END__
@@layout

@@home

@@about
<p>This site is a demonstration of how to build a website using
  Sinatra.</p>
@@special
<% title="Songs By Sinatra" %>
<!doctype html>
<html lang="en">
<head>
  <title><%= title %></title>
  <meta charset="utf-8">
</head>
<body>
  <header>
    <h1><%= title %></h1>
    <nav>
      <ul>
        <li><a href="/" title="Home">Home</a></li>
        <li><a href="/about" title="About">About</a></li>
        <li><a href="/contact" title="Contact">Contact</a></li>
        <p>Special page</p>
</ul> </nav>
</header>
  <section>
    <%= yield %>
  </section>
</body>
</html>
@@contact
<p>You can contact me by sending an email to daz at gmail.com</p>