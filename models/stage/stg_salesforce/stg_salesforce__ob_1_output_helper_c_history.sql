
with source as (

    select * from {{ source('raw_salesforce', 'ob_1_output_helper_c_history') }}

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
        ob_1_contact_c,
        ob_1_free_form_c,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
