
with source as (

    select * from {{ source('raw_recurly', 'account_acquisition_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        account_id,
        campaign,
        channel,
        cost_account,
        cost_currency,
        created_at,
        subchannel

    from source

)

select * from renamed
