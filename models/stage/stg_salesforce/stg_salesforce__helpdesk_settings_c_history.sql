
with source as (

    select * from {{ source('raw_salesforce', 'helpdesk_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        identifier_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_c,
        owner_name_c,
        region_c,
        setup_owner_id,
        sla_c,
        system_modstamp,
        team_c,
        ticket_category_c,
        ticket_subcategory_c

    from source

)

select * from renamed
