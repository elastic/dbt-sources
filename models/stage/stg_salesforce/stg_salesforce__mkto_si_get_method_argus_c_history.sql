
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_get_method_argus_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        mkto_si_argu_name_c,
        mkto_si_argu_value_c,
        mkto_si_contact_type_c,
        mkto_si_key_c,
        mkto_si_user_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
