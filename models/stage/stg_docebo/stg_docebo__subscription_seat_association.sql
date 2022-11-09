
with source as (

    select * from {{ source('raw_docebo', 'subscription_seat_association') }}

),

renamed as (

    select
        id,
        user_id,
        assignment_date,
        mode,
        status,
        seat_end_date,
        record_id,
        record_name

    from source

)

select * from renamed
