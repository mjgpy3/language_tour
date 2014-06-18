Object subclass: FizzBuzz [
    | current_element |
    init [
        current_element := 1
    ]

    calculate [
        | value |
        value := ''.

        (self current_div_by: 3)
            ifTrue: [ value := 'Fizz' ].
        (self current_div_by: 5)
            ifTrue: [ value := value , 'Buzz' ].

        value = ''
            ifTrue: [ value := current_element ].

        ^value
    ]

    move_next [
        current_element := current_element + 1
    ]

    current_div_by: n [
        ^current_element \\ n = 0
    ]

    elem [
        ^current_element
    ]
]

FizzBuzz class extend [
    new [
        | r |
        r := super new.
        r init.
        ^r
    ]
]

fb := FizzBuzz new.
100 timesRepeat: [
    (fb calculate) displayNl.
    fb move_next
]
