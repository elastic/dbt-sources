
with source as (

    select * from {{ source('raw_salesforce', 'ob_1_output_template_body_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        ob_1_output_template_c,
        ob_1_sequence_c,
        system_modstamp,
        ob_1_body_c,
        ob_1_description_c

    from source

)

select * from renamed
