
with source as (

    select * from {{ source('raw_netsuite_sa', 'charges_history') }}

),

renamed as (

    select
        charge_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        billing_account_id,
        billing_mode_id,
        billing_schedule_id,
        category_0,
        charge_extid,
        chargeemployee,
        chargerule,
        chargestage,
        chargetype,
        chargeuse,
        class_0,
        currency,
        customer,
        date_0,
        date_bill,
        date_deleted,
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
        subscription_line_id,
        subsidiary_id,
        time_source,
        unit_id,
        partition_date

    from source

)

select * from renamed
