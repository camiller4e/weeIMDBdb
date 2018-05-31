require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({
  'first_name' => 'Chris',
  'last_name' => 'Pratt'
  })
  star1.save()

  star2 = Star.new({
    'first_name' => 'Dave',
    'last_name' => 'Bautista'
    })
    star2.save()

    star3 = Star.new({
      'first_name' => 'Bradley',
      'last_name' => 'Cooper'
      })
      star3.save()

      star4 = Star.new({
        'first_name' => 'Zoe',
        'last_name' => 'Saldana'
        })
        star4.save()



movie1 = Movie.new({
  'title' => 'Guardians of the Galaxy',
  'genre' => 'Sci-Fi',
  'rating' => '5'
  })
  movie1.save()

  movie2 = Movie.new({
    'title' => 'Star Trek',
    'genre' => 'Sci-Fi',
    'rating' => '4'
    })
    movie2.save()

    movie3 = Movie.new({
      'title' => 'The Lego Movie',
      'genre' => 'Comedy',
      'rating' => '5'
      })
      movie3.save()

      movie4 = Movie.new({
        'title' => 'Limitless',
        'genre' => 'Action',
        'rating' => '2'
        })
        movie4.save()



casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => '123'
  })
  casting1.save()

  casting2 = Casting.new({
    'movie_id' => movie1.id,
    'star_id' => star4.id,
    'fee' => '1250'
    })
    casting2.save()

    casting3 = Casting.new({
      'movie_id' => movie2.id,
      'star_id' => star4.id,
      'fee' => '10000'
      })
      casting3.save()

      casting4 = Casting.new({
        'movie_id' => movie4.id,
        'star_id' => star3.id,
        'fee' => '50'
        })
        casting4.save()

        binding.pry
        nil
