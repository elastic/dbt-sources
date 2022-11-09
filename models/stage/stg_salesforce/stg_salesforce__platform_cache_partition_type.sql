
with source as (

    select * from {{ source('raw_salesforce', 'platform_cache_partition_type') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        allocated_capacity,
        allocated_purchased_capacity,
        allocated_trial_capacity,
        cache_type,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        platform_cache_partition_id,
        system_modstamp,
        _fivetran_deleted,
        allocated_partner_capacity

    from source

)

select * from renamed
