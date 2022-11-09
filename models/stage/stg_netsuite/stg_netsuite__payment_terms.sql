
with source as (

    select * from {{ source('raw_netsuite', 'payment_terms') }}

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
        is_split_evenly,
        minimum_days,
        name,
        payment_terms_extid,
        payment_terms_id,
        percentage_discount,
        repeat_every

    from source

)

select * from renamed
