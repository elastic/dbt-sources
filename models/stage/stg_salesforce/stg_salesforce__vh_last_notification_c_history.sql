
with source as (

    select * from {{ source('raw_salesforce', 'vh_last_notification_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        vh_low_hero_activities_c,
        vh_low_opportunity_gaps_c

    from source

)

select * from renamed
