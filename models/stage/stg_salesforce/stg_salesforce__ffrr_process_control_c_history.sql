
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_process_control_c_history') }}

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
        owner_id,
        system_modstamp,
        ffrr_is_locked_c,
        ffrr_process_count_c

    from source

)

select * from renamed
