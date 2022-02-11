import EdgeDB.QB

pid = EdgeDB.start_link()

# queries from TS docs

# literals

## primitives

# "asdf"
str("asdf")

# 1234
int64(123)

# 123.456
float64(123.456)

# true
bool(true)

# 12345n
bigint(12345)

# 1234.1234n
decimal("1234.1234n")

# <uuid>"0423a4f2-b94c-4972-aaf9-621ea04d02fa"
uuid("0423a4f2-b94c-4972-aaf9-621ea04d02fa")

# b"binary data"
bytes("binary data")

## strings

my_string = str("hello world")

# "hello world"[5]
my_string[5]

# "hello world"[2:5]
my_string[2..5]

# "hello world"[:5]
my_string[nil..5]

# "hello world"[2:]
my_string[2..nil]

my_string = str("hello world")
start_idx = int64(2)
end_idx = int64(5)

# "hello world"[5]
my_string.index.(start_idx)

# "hello world"[2:5]
my_string.slice.(start_idx, end_idx)

# "hello world"[:5]
my_stirng.slice.(nil, end_idx)

# "hello world"[2:]
my_string.slice(start_idx, nil)

## enums

enum(Colors, "green")
enum(Sys.VersionStage, "beta")

## datetime

# <datetime>'1999-01-01T00:00:00.000Z'
datetime(Date.new!(1999, 1, 1))

# <datetime>'1999-01-01T00:00:00.000Z'
datetime("1999-01-01")

my_duration = EdgeDB.Duration.new!(0, 0, 0, 0, 1, 2, 3)
duration(my_duration)

my_local_date = Date.new!(1776, 6, 4)
Cal.local_date(my_local_date)

my_local_time = Time.new!(13, 15, 0)
Cal.local_time(my_local_date)

my_local_date_time = NaiveDateTime.new!(1776, 06, 04, 13, 15, 0)
Cal.local_datetime(my_local_date_time)

# <std::duration>'5 minutes'
cast(duration(), str("5 minutes"))

# <cal::local_datetime>'1999-03-31T15:17:00'
cast(Cal.local_datetime(), str("1999-03-31T15:17:00"))

# <cal::local_date>'1999-03-31'
cast(Cal.local_date(), str("1999-03-31"))

# <cal::local_time>'15:17:00'
cast(Cal.local_time(), str("15:17:00"))

## json

# to_json('{"name": "Billie"}')
json(%{name: "Billie"})
json(%{"name" => "Billie"})

data =
  json(%{
    name: "Billie",
    numbers: [1, 2, 3],
    nested: %{foo: "bar"},
    duration: EdgeDB.Duration.new!(1, 3, 3)
  })

# to_json('{"numbers":[0,1,2]}')
my_json = json(%{number: [0, 1, 2]})

# to_json('{"numbers":[0,1,2]}')['numbers'][0]
my_json.numbers[0]

## arrays

# ["a", "b", "c"]
array([str("a"), str("b"), str("c")])
array(["a", "b", "c"])

# type error
# EdgeDB.Error
array([int(5), str("foo")])

# [1, 2, 3]
array([1, 2, int64(3)])

# ['a', 'b', 'c', 'd', 'e']
my_array = array(["a", "b", "c", "d", "e"])

# ['a', 'b', 'c', 'd', 'e'][1]
my_array[1]

# ['a', 'b', 'c', 'd', 'e'][1:3]
my_array[1..3]

start_idx = int64(1)
end_idx = int64(3)

# ['a', 'b', 'c', 'd', 'e'][1]
my_array.index.(start_idx)

# ['a', 'b', 'c', 'd', 'e'][1:3]
my_array.slice.(start_idx, end_idx)

## tuples

# ("Peter Parker", 18)
tuple([str("Peter Parker"), int64(18)])
tuple({str("Peter Parker"), int64(18)})

# (name := "Peter Parker", age := 18)
tuple(name: str("Peter Parker", age: int64(18)))
tuple(%{name: str("Peter Parker", age: int64(18))})

spidey = tuple([str("Peter Parker"), int64(18)])

# ("Peter Parker", 18)[0]
spidey[0]

# ("Peter Parker", 18)[0]
spidey.index.(0)

# ("Peter Parker", 18)[0]
spidey.index(int64(0))

spidey = tuple(name: str("Peter Parker"), age: int64(18))

# (name := "Peter Parker", age := 18).name
spidey[:name]

## set literal

# {'asdf', 'qwer'}
set([str("asdf"), str("qwer")])

# type error
# EdgeDB.Error
set([int64(1234), str(1234)])

# <std::int64>{}
cast(int64(), set())

# types

## common

str()
bool()
int16()
int32()
int64()
float32()
float64()
bigint()
decimal()
datetime()
duration()
bytes()
json()
Cal.local_datetime()
Cal.local_date()
Cal.local_time()
Cal.relative_duration()

## collections

# array<bool>
array(bool())

# tuple<str, int64>
tuple([str(), int64()])

# tuple<name: str, age: int64>
tuple(name: str(), age: int64())

## casting

# <json>'123'
cast(json(), int64("123"))

# <duration>'127 hours'
cast(duration(), str("127 hours"))

## custom literals

# same as <str>"sup"
literal(str(), "sup")

# same as <array<int16>>[1, 2, 3]
literal(array(int16()), [1, 2, 3])

# same as <tuple<str, int64>>("Goku", 9000)
literal(tuple([str(), int64]), ["Goku", 9000])

# same as <tuple<name: str, power_level: int64>>(name: "Goku", power_level: 9000)
literal(tuple(name: str(), power_level: int64), name: "Goku", power_level: 9000)

## parameters

query =
  params([name: str()], fn params ->
    {str("Yer a wizzard, "), :++, params.name}
  end)

query.run(pid, name: "Harry")

# functions and operators

## functions syntax

# str_upper("hello")
str_upper(str("hello"))

# 2 + 2
operator(int64(2), :+, int64(2))

nums = set([int64(3), int64(5), int64(7)])

# 4 in {3, 5, 7}
operator(int64(4), :in, nums)

# math::mean({3, 5, 7})
Math.mean(nums)

## operator syntax

# not true
not_(bool(true))

# exists {"hi"}
exists(set(["hi"]))

## ternary operators

# 😄 if true else 😢
operator(str("😄"), if: bool(true), else: str("😢"))

# parameters

hello_query =
  params([title: str()], fn params ->
    params.name
  end)

# "Yer a wizard, Harry Styles"
hello_query.run.(pid, name: "Harry Styles")

# type error
# EdgeDB.Error
hello_query.run.(pid, name: 16)

wrapped_query = select(hello_query)

# type error
# EdgeDB.Error
wrapped_query.run.(pid, name: "Harry Styles")

complex_params =
  params(
    [
      title: str(),
      runtime: duration(),
      cast: array(tuple(name: str(), character_name: str()))
    ],
    fn params ->
      insert(Movie, %{})
    end
  )

complex_params.run.(pid,
  title: "Dune",
  rutime: EdgeDB.Duration.new(0, 0, 0, 0, 2, 35),
  cast: [
    [name: "Timmy", character_name: "Paul"],
    [name: "JMo", character_name: "Idaho"]
  ]
)

# objects and paths

## object types

Default.Person
Default.Movie
Default.TVShow
MyModule.SomeType

## paths

Person.name()
Movie.title()
TVShow.cast().name

# (select Person).name
select(Person).name

# (Movie union TVShow).cast
operator(Movie, :union, TVShow).cast

iron_man =
  insert(Movie, %{
    title: "Iron Man"
  })

# (insert Movie { title := "Iron Man" }).title
iron_man.title

## type intersections

Person.acted_in().is.(TVShow)

## backlinks

# Person.<directed[is Movie]
Person[:"<directed[is Movie"]

# Person.<directed[is Movie]
Person[:"<directed"].is.(Movie)

# select

## selecting scalars

# select "hello world"
select("hello world")
select(str("hello world"))

# select 2 + 2
select(operator(int64(2), :+, int64(2)))

## selecting free objects

# select {
#  name := "Name",
#  number := 1234,
#  movies := Movie
# }
select(
  name: str("Name"),
  number: int64(1234),
  movies: Movie
)

# select Movie
query = select(Movie)

# @type :: %{id: uuid()}
query.run.(pid)

## selecting objects

# select Movie
query = select(Movie)

# @type :: %{id: uuid()}
query.run.(pid)

## shapes

# select Movie {
#  id,
#  title,
#  runtime
# }

query =
  select(Movie, [
    :id,
    :title,
    :runtime
  ])

# @type :: %{id: uuid(), title: String.t(), runtime: EdgeDB.Duration.t() | nil}
query.run.(pid)

query =
  select(Movie, [
    :id,
    title: [select: :random.uniform() > 0.5],
    runtime: [select: false]
  ])

# @type :: %{id: uuid()} | %{id: uuid(), title: String.t()}
query.run.(pid)

query =
  select(Movie, [
    :id,
    :title,
    cast: [
      :name
    ]
  ])

# @type :: %{id: uuid(), title: String.t(), cast: %{name: String.t()}}
query.run.(pid)

# filtering

# select Movie {
#  id,
#  title
# } filter .title ilike "The Matrix%"
select(Movie, [
  :id,
  :title
])
|> filter(:title, :ilike, "The Matrix%")

select(Movie, [
  :title,
  cast:
    [
      :name
    ]
    |> filter(slice(:name, 0, 1), "A")
])
|> filter(:title, "Iron Man")

## ordering

select(Movie)
|> order_by(:title)

# select Movie
# order by len(.title)
select(Movie)
|> order_by(len(:title))

# select Movie
# order by count(.cast)
select(Movie)
|> order_by(count(:cast))

# select Movie
# order by .title desc empty first
select(Movie)
|> order_by(:title, :desc, :empty_first)

select(Movie, [
  :title
])
|> order_by(:title, :desc)
|> order_by(count(:cast), :asc, :empty_last)

## pagination

# select Movie
# offset 50
# limit 10
select(Movie)
|> offset(50)
|> limit(int64(10))

query =
  select(Movie, [
    :title,
    uppercast_title: str_upper(:title),
    title_length: len(:title)
  ])

# @type :: %{name: String.t(), uppercast_title: String.t(), title_length: integer()}
query.run.(pid)

query =
  select(Content, [
    :title,
    fn content ->
      %{content.is.(Movie) => [:runtime]}
    end,
    fn content ->
      %{content.is.(TVShow) => [:num_episodes]}
    end
  ])

# @type :: %{title: String.t(), runtime: EdgeDB.Duration.t(), num_eposodes: integer()}
#          | %{title: String.t(), runtime: EdgeDB.Duration.t()} |
#          | %{title: String.t(), num_eposodes: integer()} |
#          | %{title: String.t()}
query.run.(pid)

## detached

query =
  select(Person, fn outer ->
    %{
      outer => [
        :name,
        castmates:
          select(Person, :detached, fn inner ->
            %{inner => [:name]}
          end)
          |> filter(fn ->
            operator(outer.acted_in, :in, inner.acted_in)
          end)
          |> filter(fn ->
            operator(outer, :!=, inner)
          end)
      ]
    }
  end)

# insert

runtime = EdgeDB.Duration.new(0, 0, 0, 0, 2, 28)

insert(Movie, %{
  title: str("Spider-Man: No Way Home"),
  runtime: duration(runtime)
})

insert(Movie, %{
  title: "Spider-Man: No Way Home",
  runtime: runtime
})

## handling conflicts

runtime = EdgeDB.Duration.new(0, 0, 0, 0, 2, 28)

insert(Movie, %{
  title: "Spider-Man: No Way Home",
  runtime: runtime
})
|> unless_conflict()

insert(Movie, %{
  title: "Spider-Man: No Way Home",
  runtime: runtime
})
|> unless_conflict(on: :title)

insert(Movie, %{
  title: "Spider-Man: No Way Home",
  runtime: runtime
})
|> unless_conflict(fn movie ->
  [
    on: :title,
    else:
      update(movie)
      |> set(%{
        runtime: runtime
      })
  ]
end)

# update

update(Movie)
|> filter(:title, "Avengers 4")
|> set(%{
  title: "Avengers: Endgame"
})

update(Movie)
|> filter(fn movie ->
  operator(movie.title[0], :=, " ")
end)
|> set(%{
  title: str_trim(:title)
})

## update links

### Overwrite a link

cast_members = select(Person)

update(Movie)
|> filter(:title, "The Eternals")
|> set(%{
  cast: cast_members
})

### Add to a link

cast_members = select(Person)

update(Movie)
|> filter(:title, "The Eternals")
|> set(%{
  cast: {:"+=", cast_members}
})

### Substract from a link

cast_members = select(Person)

update(Movie)
|> filter(:title, "The Eternals")
|> set(%{
  cast: {:"-=", cast_members}
})

# delete

delete(Movie)

# with

a = set([int64(1), int64(2), int64(3)])
b = alias_(a)

# with
#   a := {1, 2, 3},
#   b := a
# select a + b
select(operator(a, :+, b))

new_actor =
  insert(Person, %{
    name: "Colin Farrel"
  })

new_movie =
  insert(Movie, %{
    title: "The Batman",
    cast: new_actor
  })

query =
  select(new_movie, [
    :id,
    :title,
    cast: [:name]
  ])

new_actor =
  insert(Person, %{
    name: "Colin Farrel"
  })

insert(Movie, %{
  cast:
    with_([new_actor])
    |> select(new_actor, [
      :id,
      :title
    ])
})

# for loops

for_(set(["1", "2", "3"]), fn item ->
  item
end)

# queries from base spec

# select

select("hello world")

select([1, 2, 3])

select(set([1, 2, 3]))

with_(x: set([1, 2, 3, 4, 5]))
|> select(fn %{x: x} -> x end)
|> filter(fn %{x: x} -> operator(x, :>=, 3) end)

with_(x: set([1, 2, 3, 4, 5]))
|> select(fn %{x: x} -> x end)
|> order_by(fn %{x: x} -> x end, :desc)

with_(x: set([1, 2, 3, 4, 5]))
|> select(fn %{x: x} -> x end)
|> offset(1)
|> limit(3)

select(x: set([1, 2, 3, 4, 5]))
|> filter(fn %{x: x} -> x >= 3 end)

select(Villain)

select(Villain, [:id, :name])

select(Villain, [
  :name,
  nemesis: [:name]
])

select(Hero, [
  :name,
  villains: [
    :name
  ]
])

select(Villain, [:id, :name])
|> filter(Villain.name(), "Doc Ock")

select(Villain, [:name])
|> filter(:name, "Doc Ock")

select(Villain, [:name])
|> filter(:name, "Doc Ock")

select(Villain, [:id, :name])
|> filter(:id = uuid("b233ca98-3c23-11ec-b81f-6ba8c4f0084e"))

select(Hero, [
  :name,
  villains:
    [
      :name
    ]
    |> filter(:name, :ilike, "%er")
])
|> filter(:name, :ilike, "%man")

select(Villain, [:name])
|> order_by(:name)

select(Movie, [:title, :release_year])
|> order_by(:release_year, :desc)
|> order_by(str_trim(:title), :desc)

select(Villain, [:name])
|> order_by(:name)
|> offset(3)
|> limit(3)

# not sure
select(Villain, [:name])
|> order_by(:name)
|> limit(expr(count(Villain) - 1))

select(Villain, [
  :name,
  name_upper: str_upper(:name)
])

select(Villain, [
  :id,
  :name,
  name_upper: str_upper(:name),
  nemesis: [
    :secret_identity,
    real_name_upper: str_upper(:secret_identity)
  ]
])

select(Hero, [
  :name,
  movies: fn hero ->
    %{hero[:"<characters"].is.(Movie) => [:title]}
  end
])
|> filter(:name, "Iron Man")

select(Hero, [
  :name,
  movies: [
    :title
  ]
])
|> filter(:name, "Iron Man")

select(Villain, [
  :name,
  nemesis_name: fn villain ->
    villain.nemesis.name
  end,
  movies_with_nemesis:
    select(Movie, [:title])
    |> filter(Villain.nemesis(), :in, :characters)
])

select(Person, [:name])

select(Movie, [
  :title,
  characters: [
    :name
  ]
])
|> filter(:title, "Iron Man 2")

select(Person, [
  :name,
  secret_identity: fn person ->
    person.is.(Hero).secret_identity
  end,
  number_of_villains: fn person ->
    count(person.is.(Hero).villains)
  end,
  nemesis: fn person ->
    %{person.is.(Villain).nemesis => [:name]}
  end
])

select(Person, [
  :name,
  fn person ->
    person.is.(Hero).secret_identity
  end,
  fn person ->
    %{person.is.(Villain).nemesis => [:name]}
  end
])

select(Movie, [
  :title,
  fn person ->
    %{
      person.characters.is.(Hero) => [
        :secret_identity
      ]
    }
  end
])

select(
  my_string: "This is a string",
  my_number: 42,
  several_numbers: set([1, 2, 3]),
  all_heroes: %{Hero => [:name]}
)

with_(hero_name: "Iron Man")
|> select(Hero, [:secret_identity])
|> filter(:name, :hero_name)

# insert

# use maps intead of keywords to enforce keys on insert

insert(Hero, %{
  name: "Spider-Man",
  secret_identity: "Peter Parker"
})

insert(Hero, %{
  name: "Spider-Man"
})

insert(Person, %{
  name: "The Man With No Name"
})

insert(Villain, %{
  name: "Doc Ock",
  nemesis:
    select(Hero)
    |> filter(:name, "Spider-Man")
})

insert(Movie, %{
  title: "Spider-Man: No Way Home",
  characters:
    select(Person)
    |> filter(:name, :in, set(["Spider-Man", "Doctor Strange", "Doc Ock", "Green Goblin"]))
})

insert(Villain, %{
  name: "The Mandarin",
  nemesis:
    insert(Hero, %{
      name: "Shang-Chi",
      secret_identity: "Shaun"
    })
})

insert(Movie, %{
  title: "Black Widow",
  characters:
    set([
      select(Hero) |> filter(:name, "Black Widow"),
      insert(Hero, %{name: "Yelena Belova"}),
      insert(Villain, %{
        name: "Dreykov",
        nemesis: select(Hero) |> filter(:name, "Black Widow")
      })
    ])
})

insert(Hero, %{
  name: "Ant-Man",
  villains: select(Villain)
})

with_(black_widow: select(Hero) |> filter(:name, "Black Widow"))
|> insert(fn %{black_widow: black_widow} ->
  %{
    Movie => %{
      title: "Black Widow",
      characters:
        set([
          black_widow,
          insert(Hero, %{name: "Yelena Belova"}),
          insert(Villain, %{
            name: "Dreykov",
            nemesis: black_widow
          })
        ])
    }
  }
end)

with_(
  black_widow: select(Hero) |> filter(:name, "Black Widow"),
  yelena: insert(Hero, %{name: "Yelena Belova"}),
  dreykov: fn %{black_widow: black_widow} ->
    insert(Villain, %{name: "Dreykov", nemesis: black_widow})
  end
)
|> insert(fn %{black_widow: black_widow, yelena: yelena, dreykov: dreykov} ->
  %{
    Movie => %{
      title: "Black Widow",
      characters: set([black_widow, yelena, dreykov])
    }
  }
end)

insert(Movie, %{
  title: "Eternals"
})
|> unless_conflict(
  on: :title,
  else: select(Movie)
)

with_(
  title: "Eternals",
  release_year: 2021
)
|> insert(fn %{title: title, release_year: release_year} ->
  %{
    Movie => %{
      title: title,
      release_year: release_year
    }
  }
end)
|> unless_conflict(
  on: :title,
  else:
    update(Movie)
    |> set(fn %{release_year: release_year} ->
      %{release_year: release_year}
    end)
)

insert(Hero, %{name: "The Wasp"})
|> unless_conflict()

with_(raw_data: json(param(:data)))
|> for_(fn %{raw_data: raw_data} ->
  %{
    item: json_array_unpack(raw_data),
    do:
      union(fn %{item: item} ->
        insert(Hero, name: str(item["name"]))
      end)
  }
end)

# update

update(Hero)
|> filter(:name, "Hawkeye")
|> set(%{name: "Ronin"})

update(Hero)
|> set(%{name: str_trim(str_title(:name))})

update(Movie)
|> filter(:title, "Black Widow")
|> set(%{
  characters:
    select(Person)
    |> filter(:name, :in, set(["Black Widow", "Yelena", "Dreykov"]))
})

update(Movie)
|> filter(:title, "Black Widow")
|> set(%{
  characters: {:"-=", Villain}
})

with_(
  people:
    select(Person)
    |> order_by(:name)
    |> offset(3)
    |> limit(3)
)
|> update(fn %{people: people} ->
  people
end)
|> set(%{name: str_trim(:name)})

delete(Hero)
|> filter(:name, "Iron Man")

delete(Hero)
|> filter(:name, :ilike, "the %")
|> order_by(:name)
|> offset(10)
|> limit(5)

delete(Hero)
|> filter(:name, "Yelena Belova")

update(Movie)
|> filter(:title, "Black Widow")
|> set(%{
  characters: {:"-=", select(Hero) |> filter(:name, "Yelena Belova")}
})

with_(movie: delete(Movie) |> filter(:title, "Untitled"))
|> select(fn %{movie: movie} ->
  %{movie => [:id, :title]}
end)

# with

with_(my_str: "hello_world")
|> select(str_title(:my_str))

with_(a: 5, b: 2, c: {:a, :^, :b})
|> select(:c)

with_(
  avengers:
    select(Hero)
    |> filter(fn hero ->
      {hero.name, :in,
       set([
         "Iron Man",
         "Black Widow",
         "Captain America",
         "Thor",
         "Hawkeye",
         "The Hulk"
       ])}
    end)
)
|> select(Movie, [:title])
|> filter(fn movie, %{avengers: avengers} ->
  {avengers, :in, movie.characters}
end)
