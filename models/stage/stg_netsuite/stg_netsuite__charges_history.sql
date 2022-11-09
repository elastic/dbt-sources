
with source as (

    select * from {{ source('raw_netsuite', 'charges_history') }}

),

renamed as (

    select
        amount,
        billing_account_id,
        billing_mode_id,
        billing_schedule_id,
        category_0,
        chargeemployee,
        chargerule,
        chargestage,
        chargetype,
        chargeuse,
        charge_extid,
        charge_id,
        class_0,
        currency,
        customer,
        date_0,
        date_bill,
        date_last_modified,
        date_service_end,
        date_service_start,
        department,
        description,
        group_order,
        item,
        location_0,
        memo,
        quantity,
        rate,
        run_id,
        sales_order,
        so_line,
        subsidiary_id,
        time_source,
        unit_id,
        subscription_line_id

    from source

)

select * from renamed
