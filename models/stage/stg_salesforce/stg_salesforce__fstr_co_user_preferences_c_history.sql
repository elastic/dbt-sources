
with source as (

    select * from {{ source('raw_salesforce', 'fstr_co_user_preferences_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_checklist_component_columns_c,
        fstr_show_step_view_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
