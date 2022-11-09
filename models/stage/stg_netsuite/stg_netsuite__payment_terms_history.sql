
with source as (

    select * from {{ source('raw_netsuite', 'payment_terms_history') }}

),

renamed as (

    select
        date_driven,
        date_last_modified,
        days_till_1st_payment,
        days_until_due,
        discount_days,
        frequency_id,
        installment_count,
        isinactive,
        is_installment,
        is_preferred,
        minimum_days,
        name,
        payment_terms_extid,
        payment_terms_id,
        percentage_discount,
        repeat_every,
        is_split_evenly

    from source

)

select * from renamed
