
with source as (

    select * from {{ source('raw_salesforce', 'ob_1_output_history_body_c') }}

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
        ob_1_output_history_c,
        system_modstamp

    from source

)

select * from renamed
