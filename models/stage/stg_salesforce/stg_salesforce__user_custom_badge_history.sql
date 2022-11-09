
with source as (

    select * from {{ source('raw_salesforce', 'user_custom_badge_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        badge_type,
        created_by_id,
        created_date,
        custom_text,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
