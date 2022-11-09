
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_change_policy_map') }}

),

renamed as (

    select
        change__approval_policy_id,
        change_request_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
