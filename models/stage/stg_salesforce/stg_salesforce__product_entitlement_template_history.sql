
with source as (

    select * from {{ source('raw_salesforce', 'product_entitlement_template_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        entitlement_template_id,
        id,
        product_2_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
