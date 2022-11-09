
with source as (

    select * from {{ source('raw_netsuite', 'campaignresponsehistory') }}

),

renamed as (

    select
        author,
        campaign_response_id,
        date_0,
        note,
        response_id,
        status_detail,
        transaction_id

    from source

)

select * from renamed
