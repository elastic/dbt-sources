
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_collection_solution_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        apxtconga_4_conga_collection_c,
        apxtconga_4_conga_solution_c,
        apxtconga_4_description_c,
        apxtconga_4_sort_order_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
