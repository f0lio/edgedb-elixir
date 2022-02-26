module default {

  scalar type Genre extending enum<Horror, Action, RomCom>;

  abstract link movie_character {
    property character_name -> str;
  }
  abstract type Person {
    required property name -> str {
      constraint exclusive;
    };
  }

  type Villain extending Person {
    link nemesis -> Hero;
  }

  type Hero extending Person {
    property secret_identity -> str;
    property number_of_movies -> int64;
    multi link villains := .<nemesis[IS Villain];
  }

  type Movie {
    property genre -> Genre;
    property rating -> float64;
    required property title -> str {
      constraint exclusive;
    };
    required property release_year -> int16 {
      default := <int16>datetime_get(datetime_current(), 'year');
    }
    multi link characters extending movie_character -> Person;
    link profile -> Profile {
      constraint exclusive;
    }
  }

  type Profile {
    property plot_summary -> str;
  }

  type MovieShape {
  }

  abstract type HasName {
    property name -> str;
  }
  abstract type HasAge {
    property age -> int64;
  }

  scalar type bag_seq extending sequence;

  type Bag extending HasName, HasAge {
    property secret_identity -> str;
    property genre -> Genre;
    property boolField -> bool;
    property datetimeField -> datetime;
    property localDateField -> cal::local_date;
    property localTimeField -> cal::local_time;
    property localDateTimeField -> cal::local_datetime;
    property durationField -> duration;
    property decimalField -> decimal;
    property int64Field -> int64;
    property int32Field -> int32;
    property int16Field -> int16;
    property float32Field -> float32;
    property float64Field -> float64;
    property bigintField -> bigint;
    required multi property stringsMulti -> str;
    property stringsArr -> array<str>;
    multi property stringMultiArr -> array<str>;
    property namedTuple -> tuple<x: str, y: int64>;
    property unnamedTuple -> tuple<str, int64>;
    property enumArr -> array<Genre>;
    property seqField -> bag_seq;
  }

  type Simple extending HasName, HasAge {}
};
