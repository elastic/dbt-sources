
with source as (

    select * from {{ source('raw_recurly', 'account_note_history') }}

),

renamed as (

    select
        account_id,
        account_updated_at,
        id,
        _fivetran_synced,
        created_at,
        message,
        object,
        user_email,
        user_id

    from source

)

select * from renamed
