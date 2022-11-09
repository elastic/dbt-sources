
with source as (

    select * from {{ source('raw_salesforce', 'partner_community_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        value_c

    from source

)

select * from renamed