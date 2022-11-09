
with source as (

    select * from {{ source('raw_salesforce', 'prompt_error') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_error,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        prompt_action_id,
        step_number,
        system_modstamp,
        type

    from source

)

select * from renamed
