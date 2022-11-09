
with source as (

    select * from {{ source('raw_salesforce', 'vh_permission_check_c_history') }}

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
        owner_id,
        system_modstamp,
        vh_hero_admin_user_c,
        vh_hero_gap_user_c,
        vh_hero_integration_user_c,
        vh_hero_lite_user_c,
        vh_hero_manager_user_c,
        vh_hero_read_only_user_c,
        vh_hero_standard_user_c

    from source

)

select * from renamed
