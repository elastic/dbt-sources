
with source as (

    select * from {{ source('raw_salesforce', 'custom_brand_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        _fivetran_deleted

    from source

)

select * from renamed
