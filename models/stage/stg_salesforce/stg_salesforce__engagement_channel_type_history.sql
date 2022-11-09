
with source as (

    select * from {{ source('raw_salesforce', 'engagement_channel_type_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        engagement_channel_type_id,
        field,
        is_deleted,
        new_value,
        old_value,
        contact_point_type,
        currency_iso_code,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
