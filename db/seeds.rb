contents = [
    {
      title: 'Intercity car',
      slug: 'intercity-car',
      excerpt: 'Book one way taxi from Chandigarh to Delhi, Himachal, UP, Rajasthan at very low cost. Sanitized Cabs, Verified Driver, 24x7 Service, Safe at Night, GPS enabled, Great Amenities.',
      content: 'Personalised car for intercity travel',
      ui_type: 1,
      hover_button_type: 1,
      menu_visibility: true,
      thumbmedia_url: "/img/category/intercity.jpg",
    },
    {
        title: 'Local taxi',
        slug: 'local-taxi',
        excerpt: 'Fast Bookings & Free Cancellations. Low Price Guarantee! Ultra-Fast Booking. Biggest Discounts. Cash and Debit Accepted. No Deposit Necessary. <br/><strong>Types:</strong> Economy, Standard, SUV, Luxury, Pickup, Van.',
        content: 'Personalised car for city movement',
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/local-cab.jpg",
    },
    {
        title: 'Bus',
        slug: 'bus',
        excerpt: 'Bus for your coustomize need',
        content: 'Bus for your coustomize need',
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/bus.jpg",
    },
    {
        title: 'Religious',
        slug: 'religious-travel',
        excerpt: 'Char Dhaam, Vaishno Davi etc...',
        content: 'Char Dhaam, Vaishno Davi etc...',
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/kedarnath.jpg",
    },
    {
        title: 'Trek',
        slug: 'trek',
        excerpt: 'Go awesome places for Trek',
        content: 'Go awesome places for Trek',
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/trek.jpg",

    },
    {
        title: 'Travel Spot',
        slug: 'travel-spot',
        excerpt: "Visit India's famous travel destination",
        content: "Visit India's famous travel destination",
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/taaj.jpg",
    },
    {
        title: 'Group Camping',
        slug: 'group-camping',
        excerpt: "Group camping",
        content: "Group camping",
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: false,
        thumbmedia_url: "/img/category/group-camp-vehicle.jpg",
    },
    {
        title: 'Motor Home',
        slug: 'motor-home',
        excerpt: "Live to Travel",
        content: "Live to Travel",
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: false,
        thumbmedia_url: "/img/category/motor-home.jpg",
    },
    {
        title: 'Off Road Vehicle',
        slug: 'off-road-vehicle',
        excerpt: "Discovery and Explore",
        content: "Discovery and Explore with our rental vehicle",
        ui_type: 1,
        hover_button_type: 1,
        menu_visibility: false,
        thumbmedia_url: "/img/category/off-road-vehicle.jpg",
    },
]

articles = {
  intercity_car: [
    {
        title: 'Delhi to Chandigarh',
        slug: 'delhi-to-chandigarh',
        excerpt: 'Personalised cab to go to Chandigarh',
        content: 'Personalised cab to go to Chandigarh',
        ui_type: 1,
        hover_button_type: 1,
        thumbmedia_url: "/img/category/intercity.jpg",
    },
    {
        title: 'Delhi to Agra',
        slug: 'delhi-to-agra',
        excerpt: 'Personalised cab to go to Agra',
        content: 'Personalised cab to go to Agra',
        ui_type: 1,
        menu_visibility: true,
        thumbmedia_url: "/img/category/local-cab.jpg",
    },
    {
        title: 'Delhi to Jaipur',
        slug: 'delhi-to-jaipur',
        excerpt: 'Personalised cab to go to Agra',
        content: 'Personalised cab to go to Agra',
        ui_type: 1,
        hover_button_type: 1,
        thumbmedia_url: "/img/category/bus.jpg",
    }
  ]
}

contents.each do |content|
  Content.create(content)
end

articles.keys.each do |key|
  category = Content.find_by(slug: key.to_s.gsub('_', '-'))
  category.articles.create(articles[key])
end
