
with source as (

    select * from {{ source('raw_salesforce', 'channel_program_member_history') }}

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
        last_referenced_date,
        last_viewed_date,
        level_id,
        name,
        owner_id,
        partner_id,
        program_id,
        system_modstamp,
        field,
        data_type,
        old_value,
        new_value,
        channel_program_member_id

    from source

)

select * from renamed
