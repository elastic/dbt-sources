
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_reassignment_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_interval_c,
        fstr_interval_unit_c,
        fstr_order_c,
        fstr_pce_step_c,
        fstr_queue_c,
        fstr_role_c,
        fstr_type_c,
        fstr_user_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
