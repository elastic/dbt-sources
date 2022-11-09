
with source as (

    select * from {{ source('raw_salesforce', 'rcsfl_admin_setting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        rcsfl_account_related_to_c,
        rcsfl_auto_save_c,
        rcsfl_auto_select_c,
        rcsfl_field_order_c,
        rcsfl_pop_on_ringing_c,
        rcsfl_save_on_ringing_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
