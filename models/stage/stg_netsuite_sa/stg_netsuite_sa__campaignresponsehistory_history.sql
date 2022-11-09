
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignresponsehistory_history') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        author,
        campaign_response_id,
        date_0,
        date_deleted,
        note,
        response_id,
        status_detail,
        transaction_id,
        partition_date

    from source

)

select * from renamed
