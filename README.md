# orm-comparison

## Prisma
* Nice schema definition
* Nice migrations
* Decent Typescript support
* Completely different idea of querrying database, that can get limiting
* Easy queries get "easier", harder queries become almost impossible
* Would have to completely rewrite existing solution
* Heavy - runs on Rust and package size can slow it down

## Drizzle
* Nice schema definition - maybe even better than Prisma, because of the actual database types (varchar etc.)
* Nice migrations - quite similar at first look
* Decent Typescript support - not as good as Kysely. You might run into runtime errors, that kysely will catch with TypeScript.
* Annoyingly hard to setup - didn't have problems with Kysely and Prisma. But it is a do it once kind of thing.
* Might not have the best documentation from my experience

## Kysely
* Not an ORM - doesn't include Migrations and all that nice stuff
* The best TypeScript support
* Looks almost like SQL, so converting is not as hard

# Raw SQL
* Absolutely on your own
* The most control - you could propably write the most performant queries of all
* No type safety - you will have to either write your own types or depend on runtime errors
* Slower development - you will have to look up your database scripts, to see columns defined
* At the same time - nothing else to worry about - if there is an error - then it propably was your fault.

## Prisma-Kysely and Drizzle-Kysely = Want Kysely queries, but in an ORM form?
* Thankfully there are options like prisma-kysely, that increase Prisma performance with Kysely query syntax.
* Similarly you could use drizzle-kysely, to handle migrations, while getting better intellisense of Kysely, but I recommend trying Drizzle by itself first.


## If you have existing project
* If your existing project in using Raw SQL, then converting to Kysely could be a great option, to gain type safety


## If you are a new comer
* If your not familiar with SQL, then Prisma might be a nice choice, but be aware when building larger or more complex project, that it can be quite limiting - not to worry too much, because you could use Prisma-Kysely if you have to get into some more dirty stuff. 


# The comparison includes MySQL
* ORMs/Query builders provide a certain level of abstraction, so you won't really notice much differences.