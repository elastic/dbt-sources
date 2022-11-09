
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_terms_history') }}

),

renamed as (

    select
        payment_terms_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_driven,
        date_last_modified,
        days_till_1st_payment,
        days_until_due,
        discount_days,
        frequency_id,
        installment_count,
        is_installment,
        is_preferred,
        is_split_evenly,
        isinactive,
        minimum_days,
        name,
        payment_terms_extid,
        percentage_discount,
        repeat_every,
        is_pay_tax_upfront,
        partition_date

    from source

)

select * from renamed
