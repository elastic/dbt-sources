
with source as (

    select * from {{ source('raw_salesforce', 'customer') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        customer_status_type,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        party_id,
        system_modstamp,
        total_life_time_value

    from source

)

select * from renamed
