
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_assignment_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_assignment_time_c,
        fstr_needs_reassignment_c,
        fstr_pce_step_c,
        fstr_pce_step_reassignment_c,
        fstr_step_id_c,
        fstr_step_object_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
