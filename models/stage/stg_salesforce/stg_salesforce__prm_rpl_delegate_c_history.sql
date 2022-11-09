
with source as (

    select * from {{ source('raw_salesforce', 'prm_rpl_delegate_c_history') }}

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
        notes_c,
        setup_owner_id,
        system_modstamp,
        value_c

    from source

)

select * from renamed
