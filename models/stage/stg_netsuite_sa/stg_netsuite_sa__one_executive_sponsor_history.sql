
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_executive_sponsor_history') }}

),

renamed as (

    select
        one_executive_sponsor_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        executive,
        is_inactive,
        last_modified_date,
        one_executive_sponsor_extid,
        one_executive_sponsor_name,
        parent_id,
        partition_date

    from source

)

select * from renamed
