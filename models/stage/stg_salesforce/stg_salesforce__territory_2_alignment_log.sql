
with source as (

    select * from {{ source('raw_salesforce', 'territory_2_alignment_log') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        end_time,
        filter,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        run_as_id,
        start_time,
        status,
        system_modstamp,
        territory_2_id,
        territory_2_model_id

    from source

)

select * from renamed
